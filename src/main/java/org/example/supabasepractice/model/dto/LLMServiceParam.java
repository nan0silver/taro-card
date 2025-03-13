package org.example.supabasepractice.model.dto;

import org.example.supabasepractice.model.constant.LLMModel;

public record LLMServiceParam(LLMModel model, String prompt) {
}
