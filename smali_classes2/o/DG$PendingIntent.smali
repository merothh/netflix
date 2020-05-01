.class public final Lo/DG$PendingIntent;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# static fields
.field public static final c:Lo/DG$PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lo/DG$PendingIntent;

    invoke-direct {v0}, Lo/DG$PendingIntent;-><init>()V

    sput-object v0, Lo/DG$PendingIntent;->c:Lo/DG$PendingIntent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    return-void
.end method
