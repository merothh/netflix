.class public Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"


# instance fields
.field public action:Ljava/lang/Runnable;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->text:Ljava/lang/String;

    .line 650
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$AppAction;->action:Ljava/lang/Runnable;

    .line 651
    return-void
.end method
