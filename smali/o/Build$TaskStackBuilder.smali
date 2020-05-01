.class public final Lo/Build$TaskStackBuilder;
.super Lo/Build;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# static fields
.field public static final d:Lo/Build$TaskStackBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/Build$TaskStackBuilder;

    invoke-direct {v0}, Lo/Build$TaskStackBuilder;-><init>()V

    sput-object v0, Lo/Build$TaskStackBuilder;->d:Lo/Build$TaskStackBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lo/Build;-><init>(Lo/amc;)V

    return-void
.end method
