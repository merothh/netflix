.class public final Lo/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final e:Lo/ScheduleCalendar;


# direct methods
.method public constructor <init>(Lo/ScheduleCalendar;)V
    .locals 1

    const-string v0, "editPaymentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PersistentDataBlockManager;->e:Lo/ScheduleCalendar;

    return-void
.end method


# virtual methods
.method public final b(Lo/OemLockManager;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "editPaymentViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEditPaymentClickListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lo/PersistentDataBlockManager;->e:Lo/ScheduleCalendar;

    invoke-virtual {p1}, Lo/OemLockManager;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ScheduleCalendar;->setSelectedMopText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lo/PersistentDataBlockManager;->e:Lo/ScheduleCalendar;

    invoke-virtual {p1}, Lo/OemLockManager;->d()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ScheduleCalendar;->setUserNameText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lo/PersistentDataBlockManager;->e:Lo/ScheduleCalendar;

    invoke-virtual {p1}, Lo/OemLockManager;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/ScheduleCalendar;->setShowEditPayment(Z)V

    .line 11
    iget-object p1, p0, Lo/PersistentDataBlockManager;->e:Lo/ScheduleCalendar;

    invoke-virtual {p1, p2}, Lo/ScheduleCalendar;->setEditPaymentClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
