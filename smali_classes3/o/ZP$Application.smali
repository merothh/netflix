.class public final Lo/ZP$Application;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/ZP;

.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lo/ZP;Landroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const-string v0, "headerTextView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lo/ZP$Application;->a:Lo/ZP;

    .line 300
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/ZP$Application;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 299
    iget-object v0, p0, Lo/ZP$Application;->d:Landroid/widget/TextView;

    return-object v0
.end method
