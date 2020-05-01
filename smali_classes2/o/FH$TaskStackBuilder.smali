.class public final Lo/FH$TaskStackBuilder;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# static fields
.field public static final b:Lo/FH$TaskStackBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/FH$TaskStackBuilder;

    invoke-direct {v0}, Lo/FH$TaskStackBuilder;-><init>()V

    sput-object v0, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    return-void
.end method
