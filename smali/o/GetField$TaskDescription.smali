.class public abstract Lo/GetField$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GetField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskDescription"
.end annotation


# static fields
.field private static final d:Landroid/os/Bundle;


# instance fields
.field b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lo/GetField$TaskDescription;->d:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/GetField$TaskDescription;->b:Landroid/os/Bundle;

    return-void
.end method
