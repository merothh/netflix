.class Lo/abI$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abI;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/abI;


# direct methods
.method constructor <init>(Lo/abI;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lo/abI$3;->c:Lo/abI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 281
    iget-object v0, p0, Lo/abI$3;->c:Lo/abI;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kc:I

    invoke-virtual {v0, v1}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Lo/hK;

    iget-object v2, p0, Lo/abI$3;->c:Lo/abI;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v2, v3}, Lo/abI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2, v3}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lo/abI$3;->c:Lo/abI;

    invoke-static {v0}, Lo/abI;->e(Lo/abI;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lo/abI$3;->c:Lo/abI;

    invoke-virtual {v1, v0}, Lo/abI;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void
.end method
