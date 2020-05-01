.class public final Lo/AutomaticZenRule$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutomaticZenRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lo/AutomaticZenRule$Activity;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/AutomaticZenRule$5;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lo/AutomaticZenRule$Activity;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b()Lo/AutomaticZenRule;
    .locals 2

    .line 78
    iget-object v0, p0, Lo/AutomaticZenRule$Activity;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lo/AuthenticationRequiredException;

    invoke-direct {v1, v0}, Lo/AuthenticationRequiredException;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
