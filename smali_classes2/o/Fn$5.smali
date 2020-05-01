.class public final Lo/Fn$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fn;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic e:Lo/Fn;


# direct methods
.method constructor <init>(Lo/Fn;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lo/Fn$5;->e:Lo/Fn;

    iput-object p2, p0, Lo/Fn$5;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 42
    iget-object v0, p0, Lo/Fn$5;->a:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    sget-object v0, Lo/Fn;->c:Lo/Fn$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 44
    iget-object v0, p0, Lo/Fn$5;->e:Lo/Fn;

    iget-object v1, p0, Lo/Fn$5;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lo/Fn;->e(Lo/Fn;Landroid/content/Context;)V

    return-void
.end method
