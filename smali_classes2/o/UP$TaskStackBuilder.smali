.class public final Lo/UP$TaskStackBuilder;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# static fields
.field public static final e:Lo/UP$TaskStackBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Lo/UP$TaskStackBuilder;

    invoke-direct {v0}, Lo/UP$TaskStackBuilder;-><init>()V

    sput-object v0, Lo/UP$TaskStackBuilder;->e:Lo/UP$TaskStackBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
