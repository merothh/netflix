.class final Lo/CheckBox$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/ECPrivateKeySpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/CheckBox;


# direct methods
.method constructor <init>(Lo/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lo/CheckBox$TaskDescription;->c:Lo/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 70
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lo/CheckBox$TaskDescription;->c:Lo/CheckBox;

    iget-object v1, v1, Lo/CheckBox;->i:Landroid/view/View;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    sget-object v1, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 73
    iget-object v1, p0, Lo/CheckBox$TaskDescription;->c:Lo/CheckBox;

    iget-object v1, v1, Lo/CheckBox;->i:Landroid/view/View;

    invoke-static {v1, v0}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 74
    iget-object v0, p0, Lo/CheckBox$TaskDescription;->c:Lo/CheckBox;

    invoke-static {v0}, Lo/CheckBox;->d(Lo/CheckBox;)V

    :cond_0
    return-void
.end method
