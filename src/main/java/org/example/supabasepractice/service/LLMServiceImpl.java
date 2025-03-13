package org.example.supabasepractice.service;

import org.example.supabasepractice.model.dto.LLMServiceParam;
import org.example.supabasepractice.model.dto.LLMServiceResponse;
import org.example.supabasepractice.model.repository.LLMRepository;

import java.io.IOException;
import java.util.logging.Logger;

public class LLMServiceImpl implements LLMService {
    private LLMServiceImpl() {}

    public static LLMService instance = new LLMServiceImpl();

    public static LLMService getInstance() {
        return instance;
    }

    private final Logger logger = Logger.getLogger(LLMServiceImpl.class.getName());

    private final LLMRepository llmRepository = LLMRepository.getInstance();

    @Override
    public LLMServiceResponse callModel(LLMServiceParam param) throws IOException, InterruptedException {
        logger.info("callModel");
//        return new LLMServiceResponse("test");
        String prompt = "%s, 이것과 관련해서 타로 카드를 추천해주고, 이 카드와 관련된 설명을 작성해줘. 평문으로 한국어로 응답을 작성해줘.".formatted(param.prompt());
        return new LLMServiceResponse(llmRepository.callModel(
                param.model(), prompt));
    }
}