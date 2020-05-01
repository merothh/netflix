.class public Lo/wl$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionBar"
.end annotation


# instance fields
.field protected bandwidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bw"
    .end annotation
.end field

.field protected id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected ip:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ip"
    .end annotation
.end field

.field protected locid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locid"
    .end annotation
.end field

.field protected rtt:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rtt"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lo/tH$Application;)Lo/wl$ActionBar;
    .locals 2

    .line 189
    new-instance v0, Lo/wl$ActionBar;

    invoke-direct {v0}, Lo/wl$ActionBar;-><init>()V

    .line 190
    iget-object v1, p0, Lo/tH$Application;->e:Ljava/lang/String;

    iput-object v1, v0, Lo/wl$ActionBar;->id:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lo/tH$Application;->c:Ljava/lang/String;

    iput-object v1, v0, Lo/wl$ActionBar;->locid:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lo/tH$Application;->d:Ljava/lang/String;

    iput-object v1, v0, Lo/wl$ActionBar;->ip:Ljava/lang/String;

    .line 193
    iget v1, p0, Lo/tH$Application;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wl$ActionBar;->rtt:Ljava/lang/Integer;

    .line 194
    iget p0, p0, Lo/tH$Application;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lo/wl$ActionBar;->bandwidth:Ljava/lang/Integer;

    return-object v0
.end method
