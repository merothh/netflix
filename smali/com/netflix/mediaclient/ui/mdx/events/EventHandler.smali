.class public abstract Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;


# static fields
.field protected static final TAG:Ljava/lang/String; = "mdxui"


# instance fields
.field protected final mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;->mAction:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v0, "mdxui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX event handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;->mAction:Ljava/lang/String;

    return-object v0
.end method
