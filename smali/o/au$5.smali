.class public final Lo/au$5;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/au;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/alB;Lo/alS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/au;


# direct methods
.method constructor <init>(Lo/au;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/au$5;->a:Lo/au;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lo/au$5;->a:Lo/au;

    invoke-static {p1}, Lo/au;->a(Lo/au;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lo/au$5;->a:Lo/au;

    invoke-static {p1}, Lo/au;->d(Lo/au;)V

    :goto_0
    return-void
.end method
