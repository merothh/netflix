.class Lcom/netflix/mediaclient/service/NrdController$1;
.super Ljava/lang/Object;
.source "NrdController.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NrdController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NrdController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/NrdController$1;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/NrdController$1$1;

    invoke-direct {v1, p0, p0}, Lcom/netflix/mediaclient/service/NrdController$1$1;-><init>(Lcom/netflix/mediaclient/service/NrdController$1;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
