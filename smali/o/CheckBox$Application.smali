.class final Lo/CheckBox$Application;
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
.field final synthetic e:Lo/CheckBox;


# direct methods
.method constructor <init>(Lo/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lo/CheckBox$Application;->e:Lo/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 79
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lo/CheckBox$Application;->e:Lo/CheckBox;

    iget-object v0, v0, Lo/CheckBox;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 82
    iget-object v0, p0, Lo/CheckBox$Application;->e:Lo/CheckBox;

    iget-object v0, v0, Lo/CheckBox;->i:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 83
    iget-object v0, p0, Lo/CheckBox$Application;->e:Lo/CheckBox;

    invoke-static {v0}, Lo/CheckBox;->d(Lo/CheckBox;)V

    :cond_0
    return-void
.end method
