.class Lo/acV$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/acV$3;->c:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/acV$3;->c:Lo/acV;

    invoke-virtual {v0, p1}, Lo/acV;->performAction(Landroid/view/View;)V

    return-void
.end method
