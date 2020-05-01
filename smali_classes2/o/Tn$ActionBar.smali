.class final Lo/Tn$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Tn;


# direct methods
.method constructor <init>(Lo/Tn;)V
    .locals 0

    iput-object p1, p0, Lo/Tn$ActionBar;->d:Lo/Tn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lo/Tn$ActionBar;->d:Lo/Tn;

    invoke-virtual {p1}, Lo/Tn;->d()Lcom/netflix/mediaclient/ui/player/PlanChoice;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Tn;->c(Lo/Tn;Lcom/netflix/mediaclient/ui/player/PlanChoice;)V

    return-void
.end method
