.class public Lcom/netflix/mediaclient/util/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IoUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IoUtil"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
