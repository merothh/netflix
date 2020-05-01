.class public final Lo/CommonClock$PendingIntent;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# static fields
.field public static final e:Lo/CommonClock$PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/CommonClock$PendingIntent;

    invoke-direct {v0}, Lo/CommonClock$PendingIntent;-><init>()V

    sput-object v0, Lo/CommonClock$PendingIntent;->e:Lo/CommonClock$PendingIntent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
