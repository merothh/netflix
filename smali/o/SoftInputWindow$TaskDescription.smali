.class final Lo/SoftInputWindow$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SoftInputWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# static fields
.field static final d:Lo/SoftInputWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lo/SoftInputWindow;

    invoke-direct {v0}, Lo/SoftInputWindow;-><init>()V

    sput-object v0, Lo/SoftInputWindow$TaskDescription;->d:Lo/SoftInputWindow;

    return-void
.end method
