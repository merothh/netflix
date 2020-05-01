.class final Lo/ConfigurationStats$ActionBar;
.super Lo/Utils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ConfigurationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Utils<",
        "Lo/ConfigurationStats$TaskDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Lo/Utils;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Class;)Lo/ConfigurationStats$TaskDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/ConfigurationStats$TaskDescription;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lo/ConfigurationStats$ActionBar;->e()Lo/ExternalStorageStats;

    move-result-object v0

    check-cast v0, Lo/ConfigurationStats$TaskDescription;

    .line 230
    invoke-virtual {v0, p1, p2}, Lo/ConfigurationStats$TaskDescription;->d(ILjava/lang/Class;)V

    return-object v0
.end method

.method protected synthetic a()Lo/ExternalStorageStats;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lo/ConfigurationStats$ActionBar;->b()Lo/ConfigurationStats$TaskDescription;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lo/ConfigurationStats$TaskDescription;
    .locals 1

    .line 236
    new-instance v0, Lo/ConfigurationStats$TaskDescription;

    invoke-direct {v0, p0}, Lo/ConfigurationStats$TaskDescription;-><init>(Lo/ConfigurationStats$ActionBar;)V

    return-object v0
.end method
