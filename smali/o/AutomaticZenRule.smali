.class public abstract Lo/AutomaticZenRule;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutomaticZenRule$Activity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lo/AutomaticZenRule$Activity;
    .locals 2

    .line 94
    new-instance v0, Lo/AutomaticZenRule$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/AutomaticZenRule$Activity;-><init>(Landroid/content/Context;Lo/AutomaticZenRule$5;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lo/BroadcastOptions;)V
.end method

.method public abstract b()V
.end method

.method public abstract e()Lo/ClientTransactionHandler;
.end method
