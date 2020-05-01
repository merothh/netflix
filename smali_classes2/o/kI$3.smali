.class Lo/kI$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kI;->d(Landroid/content/Context;Lo/zE;Lio/reactivex/subjects/CompletableSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/CompletableSubject;

.field final synthetic b:Lo/kI;


# direct methods
.method constructor <init>(Lo/kI;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/kI$3;->b:Lo/kI;

    iput-object p2, p0, Lo/kI$3;->a:Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TargetManagerV2"

    const-string v1, "addCaf - successfully initialized CAF"

    .line 106
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lo/kI$3;->a:Lio/reactivex/subjects/CompletableSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/CompletableSubject;->onComplete()V

    return-void
.end method
