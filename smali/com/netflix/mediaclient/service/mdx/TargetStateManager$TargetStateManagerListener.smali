.class public interface abstract Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetStateManagerListener;
.super Ljava/lang/Object;
.source "TargetStateManager.java"


# virtual methods
.method public abstract removeEvents(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;)V
.end method

.method public abstract scheduleEvent(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;I)V
.end method

.method public abstract stateHasError(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
.end method

.method public abstract stateHasExhaustedRetry(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
.end method

.method public abstract stateHasTimedOut(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)V
.end method
