package logger

import (
	"github.com/rs/zerolog/log"
)

// TinyLogger is a type that wraps around a third party logging library
type TinyLogger struct{}

// NewTinyLogger returns a reference to a new Logger struct instance
func NewTinyLogger() *TinyLogger {
	return &TinyLogger{}
}

// Info starts a new message with info level
func (logger *TinyLogger) Info(message string, variables ...interface{}) {
	log.Info().Msgf(message, variables...)
}

// Debug starts a new message with Debug level
func (logger *TinyLogger) Debug(message string, variables ...interface{}) {
	log.Debug().Msgf(message, variables...)
}

// Warn starts a new message with Warn level
func (logger *TinyLogger) Warn(message string, variables ...interface{}) {
	log.Warn().Msgf(message, variables...)
}

// Error starts a new message with error level.
func (logger *TinyLogger) Error(message string, variables ...interface{}) {
	log.Error().Msgf(message, variables...)
}

// Fatal starts a new message with fatal level. The os.Exit(1) function is called by the Msg method
func (logger *TinyLogger) Fatal(message string, variables ...interface{}) {
	log.Fatal().Msgf(message, variables...)
}

// Panic starts a new message with panic level. The message is also sent to the panic function.
func (logger *TinyLogger) Panic(message string, variables ...interface{}) {
	log.Panic().Msgf(message, variables...)
}
