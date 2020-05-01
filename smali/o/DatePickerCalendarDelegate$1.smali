.class Lo/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lo/DatePickerCalendarDelegate;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/DatePickerCalendarDelegate$1;->e:Lo/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ErrorWrapper"

    const-string v0, "Retry requested"

    .line 147
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lo/DatePickerCalendarDelegate$1;->e:Lo/DatePickerCalendarDelegate;

    invoke-static {p1}, Lo/DatePickerCalendarDelegate;->a(Lo/DatePickerCalendarDelegate;)Lo/DatePickerCalendarDelegate$Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lo/DatePickerCalendarDelegate$1;->e:Lo/DatePickerCalendarDelegate;

    invoke-static {p1}, Lo/DatePickerCalendarDelegate;->a(Lo/DatePickerCalendarDelegate;)Lo/DatePickerCalendarDelegate$Activity;

    move-result-object p1

    invoke-interface {p1}, Lo/DatePickerCalendarDelegate$Activity;->d()V

    :cond_0
    return-void
.end method
