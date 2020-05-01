.class Lo/Ul$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ul;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Ul;


# direct methods
.method constructor <init>(Lo/Ul;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lo/Ul$5;->c:Lo/Ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lo/Ul$5;->c:Lo/Ul;

    invoke-virtual {p1}, Lo/Ul;->c()V

    .line 518
    iget-object p1, p0, Lo/Ul$5;->c:Lo/Ul;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Ul;->c(Z)V

    return-void
.end method
