.class public final Lo/RecurrenceRule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/Singleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/RecurrenceRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/RecurrenceRule;

    invoke-direct {v0}, Lo/RecurrenceRule;-><init>()V

    sput-object v0, Lo/RecurrenceRule;->d:Lo/RecurrenceRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/RecurrenceRule;
    .locals 1

    .line 19
    sget-object v0, Lo/RecurrenceRule;->d:Lo/RecurrenceRule;

    return-object v0
.end method


# virtual methods
.method public d()Lo/Singleton;
    .locals 1

    .line 15
    new-instance v0, Lo/Singleton;

    invoke-direct {v0}, Lo/Singleton;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/RecurrenceRule;->d()Lo/Singleton;

    move-result-object v0

    return-object v0
.end method
