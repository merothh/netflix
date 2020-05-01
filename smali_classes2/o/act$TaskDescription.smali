.class final Lo/act$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/act;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/act;


# direct methods
.method constructor <init>(Lo/act;)V
    .locals 0

    iput-object p1, p0, Lo/act$TaskDescription;->d:Lo/act;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/act$TaskDescription;->d:Lo/act;

    invoke-static {v0}, Lo/act;->h(Lo/act;)V

    return-void
.end method
