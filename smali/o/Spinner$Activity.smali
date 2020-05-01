.class final Lo/Spinner$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Spinner;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Spinner;


# direct methods
.method constructor <init>(Lo/Spinner;)V
    .locals 0

    iput-object p1, p0, Lo/Spinner$Activity;->a:Lo/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/Spinner$Activity;->a:Lo/Spinner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Spinner;->d(Lo/Spinner;Z)V

    return-void
.end method
