.class final Lo/WV$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WV;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/WV;


# direct methods
.method constructor <init>(Lo/WV;)V
    .locals 0

    iput-object p1, p0, Lo/WV$TaskDescription;->c:Lo/WV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lo/WV$TaskDescription;->c:Lo/WV;

    invoke-virtual {p1}, Lo/WV;->f()V

    return-void
.end method
