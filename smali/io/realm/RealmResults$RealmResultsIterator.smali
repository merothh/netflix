.class Lio/realm/RealmResults$RealmResultsIterator;
.super Ljava/lang/Object;
.source "RealmResults.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field pos:I

.field tableViewVersion:J

.field final synthetic this$0:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/RealmResults;)V
    .locals 2

    iput-object p1, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->tableViewVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    invoke-static {p1}, Lio/realm/RealmResults;->access$000(Lio/realm/RealmResults;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->tableViewVersion:J

    return-void
.end method


# virtual methods
.method protected checkRealmIsStable()V
    .locals 6

    iget-object v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    invoke-static {v0}, Lio/realm/RealmResults;->access$100(Lio/realm/RealmResults;)Lio/realm/internal/TableOrView;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/TableOrView;->getVersion()J

    move-result-wide v0

    iget-object v2, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    iget-object v2, v2, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/realm/RealmResults$RealmResultsIterator;->tableViewVersion:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lio/realm/RealmResults$RealmResultsIterator;->tableViewVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string/jumbo v1, "No outside changes to a Realm is allowed while iterating a RealmResults. Don\'t call Realm.refresh() while iterating."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->tableViewVersion:J

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lio/realm/RealmModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    iget-object v0, v0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    invoke-virtual {p0}, Lio/realm/RealmResults$RealmResultsIterator;->checkRealmIsStable()V

    iget v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    iget v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    iget-object v1, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmResults$RealmResultsIterator;->this$0:Lio/realm/RealmResults;

    iget v1, p0, Lio/realm/RealmResults$RealmResultsIterator;->pos:I

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/realm/RealmResults$RealmResultsIterator;->next()Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
