.class public Lcom/netflix/mediaclient/javabridge/invoke/media/Stop;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Stop.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "stop"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "stop"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
