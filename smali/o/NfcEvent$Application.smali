.class public final Lo/NfcEvent$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NfcEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/NfcEvent$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo/NfcEvent;
    .locals 2

    .line 33
    new-instance v0, Lo/NfcEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NfcEvent;-><init>(Lo/amc;)V

    return-object v0
.end method

.method public final d(Lo/Serializable;)Lo/NfcEvent;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lo/NfcEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NfcEvent;-><init>(Lo/amc;)V

    invoke-static {v0, p1}, Lo/NfcEvent;->e(Lo/NfcEvent;Lo/Serializable;)Lo/NfcEvent;

    move-result-object p1

    return-object p1
.end method
