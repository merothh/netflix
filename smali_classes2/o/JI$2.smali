.class Lo/JI$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JI;->b(Lcom/netflix/mediaclient/StatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/JI;


# direct methods
.method constructor <init>(Lo/JI;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/JI$2;->a:Lo/JI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lo/JI$2;->a:Lo/JI;

    invoke-virtual {p1}, Lo/JI;->dismiss()V

    .line 106
    iget-object p1, p0, Lo/JI$2;->a:Lo/JI;

    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    iget-object v1, p0, Lo/JI$2;->a:Lo/JI;

    invoke-virtual {v1}, Lo/JI;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abD$StateListAnimator;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/JI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
