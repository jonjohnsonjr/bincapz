// Copyright 2024 Chainguard, Inc.
// SPDX-License-Identifier: Apache-2.0

package render

import (
	"context"
	"encoding/json"
	"fmt"
	"io"

	"github.com/chainguard-dev/bincapz/pkg/bincapz"
)

type JSON struct {
	w io.Writer
}

func NewJSON(w io.Writer) JSON {
	return JSON{w: w}
}

func (r JSON) File(_ context.Context, _ *bincapz.FileReport) error {
	return nil
}

func (r JSON) Full(_ context.Context, rep *bincapz.Report) error {
	j, err := json.MarshalIndent(rep, "", "    ")
	if err != nil {
		return err
	}
	_, err = fmt.Fprintf(r.w, "%s\n", j)
	return err
}
