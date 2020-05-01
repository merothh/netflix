.class final Lo/GM$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/GM;


# direct methods
.method constructor <init>(Lo/GM;)V
    .locals 0

    iput-object p1, p0, Lo/GM$TaskDescription;->a:Lo/GM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lo/GM$TaskDescription;->a:Lo/GM;

    invoke-virtual {p1}, Lo/GM;->finish()V

    return-void
.end method
