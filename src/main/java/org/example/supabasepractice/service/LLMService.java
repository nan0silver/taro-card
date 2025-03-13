package org.example.supabasepractice.service;

import io.github.cdimascio.dotenv.Dotenv;
import org.example.supabasepractice.model.dto.LLMServiceParam;
import org.example.supabasepractice.model.dto.LLMServiceResponse;

import java.io.IOException;

public interface LLMService {
    LLMServiceResponse callModel(LLMServiceParam param) throws IOException, InterruptedException;

    Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
}
