.class public final Lo/ud$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:I

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lo/ud$ActionBar;->a:I

    .line 118
    iput-object p2, p0, Lo/ud$ActionBar;->c:Ljava/lang/String;

    .line 119
    iput-wide p3, p0, Lo/ud$ActionBar;->d:J

    return-void
.end method
