.class public Lo/ny$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lo/ny$Application;->c:Ljava/lang/String;

    .line 164
    iput p2, p0, Lo/ny$Application;->a:I

    .line 165
    iput-object p3, p0, Lo/ny$Application;->b:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lo/ny$Application;->d:Ljava/lang/String;

    return-void
.end method
