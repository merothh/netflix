.class Lo/Lm$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lm;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lo/Lm;


# direct methods
.method constructor <init>(Lo/Lm;Landroid/view/View;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lo/Lm$1;->c:Lo/Lm;

    iput-object p2, p0, Lo/Lm$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 429
    iget-object p1, p0, Lo/Lm$1;->c:Lo/Lm;

    iget-object v0, p1, Lo/Lm;->h:Lo/Ab;

    invoke-static {p1, v0}, Lo/Lm;->e(Lo/Lm;Lo/Ab;)V

    .line 430
    iget-object p1, p0, Lo/Lm$1;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    sget-object p1, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {p1}, Lo/aeI;->b()V

    return-void
.end method
