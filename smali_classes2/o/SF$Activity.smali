.class public final Lo/SF$Activity;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/FU;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lo/CheckBox;

    .line 21
    sget-object v1, Lo/SF$Activity$StateListAnimator;->c:Lo/SF$Activity$StateListAnimator;

    check-cast v1, Lo/DatePickerCalendarDelegate$Activity;

    .line 22
    sget-object v2, Lo/CheckBox;->e:Lo/CheckBox$ActionBar;

    .line 19
    invoke-direct {v0, p1, v1, v2}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {v0, p1}, Lo/CheckBox;->c(Z)V

    return-void
.end method
