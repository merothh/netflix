.class Lo/IL$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lo/IL$4;->d:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 381
    iget-object v0, p0, Lo/IL$4;->d:Lo/IL;

    invoke-static {v0}, Lo/IL;->a(Lo/IL;)Lo/Jj;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 382
    iget-object v0, p0, Lo/IL$4;->d:Lo/IL;

    invoke-static {v0}, Lo/IL;->d(Lo/IL;)V

    return-void
.end method
