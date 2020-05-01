.class public final Lo/YB$PendingIntent;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# static fields
.field public static final a:Lo/YB$PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/YB$PendingIntent;

    invoke-direct {v0}, Lo/YB$PendingIntent;-><init>()V

    sput-object v0, Lo/YB$PendingIntent;->a:Lo/YB$PendingIntent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    return-void
.end method
