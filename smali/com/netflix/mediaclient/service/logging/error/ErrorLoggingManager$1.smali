.class final Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;
.super Ljava/lang/Object;
.source "ErrorLoggingManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic val$globalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 107
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v0, "Memento_%d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$critDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 141
    return-void

    .line 112
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMemento2Test(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string/jumbo v0, "Memento2_%d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-string/jumbo v0, "AimLow7480_%d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    .line 116
    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPrefetchLolomoConfig(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string/jumbo v1, "nf_log_crit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uncaughtException: message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 124
    if-le v0, v1, :cond_5

    .line 125
    const-string/jumbo v1, "Coppola_%d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p2

    goto/16 :goto_0

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager$1;->val$globalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola2ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 129
    if-le v0, v1, :cond_0

    .line 130
    const-string/jumbo v1, "Coppola2_%d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-9027 - got throwable while wrapping stack trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "nf_log_crit"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
