.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"


# instance fields
.field public action:Ljava/lang/Runnable;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->action:Ljava/lang/Runnable;

    return-void
.end method
