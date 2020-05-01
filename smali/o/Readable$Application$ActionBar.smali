.class public final Lo/Readable$Application$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public e:Lo/NoSuchFieldException;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 693
    iput-object p2, p0, Lo/Readable$Application$ActionBar;->b:Ljava/lang/String;

    return-void
.end method
