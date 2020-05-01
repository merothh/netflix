.class Lo/acV$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acV;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lo/acV$7;->d:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 861
    iget-object p1, p0, Lo/acV$7;->d:Lo/acV;

    invoke-static {}, Lo/acV;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/OnAttachStateChangeListener;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
