.class public final Lo/aoJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lo/apN;

.field private static final e:Lo/apN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Lo/apN;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aoJ;->e:Lo/apN;

    .line 167
    new-instance v0, Lo/apN;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aoJ;->a:Lo/apN;

    return-void
.end method

.method public static final synthetic b()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/aoJ;->e:Lo/apN;

    return-object v0
.end method

.method public static final synthetic c()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/aoJ;->a:Lo/apN;

    return-object v0
.end method
