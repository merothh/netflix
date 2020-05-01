.class public Lo/BluetoothAvrcpPlayerSettings$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcpPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Lo/FileBackupHelperBase;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/FileBackupHelperBase;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo/RestoreSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreSession<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FileBackupHelperBase;Ljava/util/List;Lo/RestoreSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Ljava/util/List<",
            "Lo/FileBackupHelperBase;",
            ">;",
            "Lo/RestoreSession<",
            "TData;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FileBackupHelperBase;

    iput-object p1, p0, Lo/BluetoothAvrcpPlayerSettings$Application;->b:Lo/FileBackupHelperBase;

    .line 57
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/BluetoothAvrcpPlayerSettings$Application;->d:Ljava/util/List;

    .line 58
    invoke-static {p3}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RestoreSession;

    iput-object p1, p0, Lo/BluetoothAvrcpPlayerSettings$Application;->e:Lo/RestoreSession;

    return-void
.end method

.method public constructor <init>(Lo/FileBackupHelperBase;Lo/RestoreSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/RestoreSession<",
            "TData;>;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/BluetoothAvrcpPlayerSettings$Application;-><init>(Lo/FileBackupHelperBase;Ljava/util/List;Lo/RestoreSession;)V

    return-void
.end method
