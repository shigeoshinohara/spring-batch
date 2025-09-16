package jp.sync_web.batchhelloworldtasklet.tasklet;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;

/**
 * Tasklet that prints "Hello, World!" to the log
 */
@Component
@StepScope
@Slf4j
public class HelloTasklet implements Tasklet {

    @Override
    public RepeatStatus execute(StepContribution contribution,
                                ChunkContext chunkContext) throws Exception {
        log.info("Hello, World!");
        return RepeatStatus.FINISHED;
    }
}
