.class final Lo/Debug$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Debug;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Debug;


# direct methods
.method constructor <init>(Lo/Debug;)V
    .locals 0

    iput-object p1, p0, Lo/Debug$5;->c:Lo/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lo/Debug$5;->c:Lo/Debug;

    invoke-static {p1}, Lo/Debug;->c(Lo/Debug;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lo/Debug$5;->c:Lo/Debug;

    .line 65
    new-instance v1, Lo/CommonClock$ComponentCallbacks2;

    invoke-direct {v1, p1}, Lo/CommonClock$ComponentCallbacks2;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v1}, Lo/Debug;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
