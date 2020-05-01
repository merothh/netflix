.class public final Lo/Zu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zu$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/Zu$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Zu$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Zu$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Zu;->b:Lo/Zu$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
