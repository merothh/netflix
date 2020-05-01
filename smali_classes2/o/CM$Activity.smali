.class final Lo/CM$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CM;->j(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/CM;


# direct methods
.method constructor <init>(Lo/CM;)V
    .locals 0

    iput-object p1, p0, Lo/CM$Activity;->a:Lo/CM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lo/CM$Activity;->a:Lo/CM;

    invoke-static {p1}, Lo/CM;->e(Lo/CM;)V

    return-void
.end method
