.class public interface abstract Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;,
        Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;,
        Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
    }
.end annotation


# virtual methods
.method public abstract d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
.end method

.method public abstract e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;[Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$Activity;)Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailback;
.end method

.method public abstract e(JLcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/zF;Lo/zz;)V
.end method
