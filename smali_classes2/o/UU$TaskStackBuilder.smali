.class public final Lo/UU$TaskStackBuilder;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# static fields
.field public static final d:Lo/UU$TaskStackBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lo/UU$TaskStackBuilder;

    invoke-direct {v0}, Lo/UU$TaskStackBuilder;-><init>()V

    sput-object v0, Lo/UU$TaskStackBuilder;->d:Lo/UU$TaskStackBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
